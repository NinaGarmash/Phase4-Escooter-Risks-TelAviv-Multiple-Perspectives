"""
Converts DOCX files to PDF via Word COM, then merges all PDFs
into one submission file in the required order.
"""
import os
import sys
import time

pkg_dir = os.path.dirname(os.path.abspath(__file__))

# Order per ISTRC requirements (exclude checklist, call, and 20260517 version)
docx_files = [
    "White Paper First Page.docx",
    "Policy Paper Proposal.docx",
    "CV Mali Sher.docx",
    "CV Nina Garmash.docx",
    "White Paper Budget Plan.docx",
]
approval_pdf = "מכתב אישור הגשה - המרכז הישראלי לתחבורה חכמה.pdf"

output_pdf = os.path.join(pkg_dir, "ISTRC_Submission_Final.pdf")

# ── Step 1: DOCX → PDF via Word COM ──────────────────────────────────────────
print("Converting DOCX files to PDF via Word...")
try:
    import win32com.client
    word = win32com.client.Dispatch("Word.Application")
    word.Visible = False
    word.DisplayAlerts = False
except Exception as e:
    print(f"ERROR: Could not start Word: {e}")
    sys.exit(1)

converted_pdfs = []
try:
    for fname in docx_files:
        src = os.path.join(pkg_dir, fname)
        dst = src.replace(".docx", "_converted.pdf")
        if not os.path.exists(src):
            print(f"  MISSING: {fname}")
            continue
        print(f"  {fname} -> {os.path.basename(dst)}")
        doc = word.Documents.Open(src)
        doc.SaveAs(dst, FileFormat=17)  # 17 = wdFormatPDF
        doc.Close(False)
        converted_pdfs.append(dst)
        time.sleep(0.5)
finally:
    word.Quit()

# Add approval PDF last
approval_path = os.path.join(pkg_dir, approval_pdf)
if os.path.exists(approval_path):
    converted_pdfs.append(approval_path)
    print(f"  Added: {approval_pdf}")
else:
    print(f"  WARNING: approval PDF not found: {approval_pdf}")

# ── Step 2: Merge PDFs ────────────────────────────────────────────────────────
print("\nMerging PDFs...")
try:
    from pypdf import PdfWriter
    lib = "pypdf"
except ImportError:
    try:
        from PyPDF2 import PdfWriter, PdfReader
        lib = "PyPDF2"
    except ImportError:
        print("ERROR: No PDF merge library found. Run: pip install pypdf")
        sys.exit(1)

print(f"  Using: {lib}")
writer = PdfWriter()

for pdf_path in converted_pdfs:
    print(f"  Merging: {os.path.basename(pdf_path)}")
    try:
        if lib == "pypdf":
            from pypdf import PdfReader
            reader = PdfReader(pdf_path)
        else:
            reader = PdfReader(pdf_path)
        for page in reader.pages:
            writer.add_page(page)
    except Exception as e:
        print(f"  ERROR merging {pdf_path}: {e}")

with open(output_pdf, "wb") as f:
    writer.write(f)

print(f"\nDone: {output_pdf}")
print(f"Pages: {sum(1 for _ in writer.pages)}")

# Clean up temporary converted PDFs
for p in converted_pdfs:
    if p.endswith("_converted.pdf") and os.path.exists(p):
        os.remove(p)
print("Temp files cleaned up.")
