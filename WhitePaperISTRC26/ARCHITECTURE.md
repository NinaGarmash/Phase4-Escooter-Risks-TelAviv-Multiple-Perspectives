# ARCHITECTURE — ISTRC White Paper Project

## Что это за проект

Policy white paper для **ISTRC 2026** (Israel Transportation Research Conference).
Тема: *"A Multi-Source Evidence Framework for E-Scooter Safety Policy in Israel"*.
PI: Dr. Mali Sher (HIT). Соавтор/исполнитель: Nina Garmash.

Статус на 2026-09-10: заявка одобрена, грант получен (запрошенный бюджет — 50,000 NIS,
из них 10,000 NIS на presentation/video). Проект переходит из фазы заявки в фазу
исполнения — написание собственно white paper.

Это отдельный трек внутри `ESCOOTER_Project` — не путать с журнальной статьёй
(`Article_2026/`, см. память `project-escooter-article`) и с самим PBI-дашбордом
(`escooter_TA_new.pbix` и др. в корне репозитория). Все три трека используют одни
и те же исходные данные аварийности (CBS markers/involved/vehicles), но это разные
деливераблы с разными аудиториями и дедлайнами.

## Структура каталога `WhitePaperISTRC26/`

```
WhitePaperISTRC26/
  ARCHITECTURE.md          # этот файл
  STATE.md                 # текущий снэпшот — обновляется при каждом /istrc-save
  NEXT_STEPS.md            # живой список следующих действий
  LOG.md                   # хронологический журнал содержательных изменений

  CV_Mali_Sher_ISTRC.{docx,md,pdf}
  CV_Nina_Garmash_ISTRC.{docx,md}
  ISTRC Budget Plan.docx
  ISTRC First Page.docx
  ISTRC Policy Paper Proposal.docx
  Policy Paper Proposal_20260512 MS.docx      # промежуточная версия
  codex_ISTRC Policy White Paper Proposal MS 060526.docx  # черновик от Codex/другого инструмента
  Sher_Mali_042026.docx                       # ранний черновик (апрель)
  clean_references_20260516.ps1               # скрипт чистки списка литературы
  ISTRC-Call-for-Policy-Papers-2026-...pdf    # исходный call for papers (справочный)
  2_0f42ed41-...pdf                           # похоже на квитанцию/подтверждение с портала подачи (18 мая)

  ISTRC_Submission_Package_2026-05-07/        # финальный поданный пакет
    00 ISTRC submission checklist.md
    White Paper First Page.docx
    Policy Paper Proposal.docx
    CV Mali Sher.docx / CV Nina Garmash.docx
    White Paper Budget Plan.docx
    White Paper Policy Paper Proposal_20260517.docx
    מכתב אישור הגשה - המרכז הישראלי לתחבורה חכמה.pdf   # письмо одобрения HIT/центра
    Reference - ISTRC Call.pdf
    merge_submission.py                       # DOCX→PDF (Word COM) + merge в один файл
    ISTRC_Submission_Final.pdf                # 13 стр., итоговый поданный документ

  NewMali/                                    # 4 литературных обзора от Mali (14 мая)
    BI and KPI literatuure survey.docx
    BI literasture survay2.docx
    Nina BI Literature survey.docx
    Solutions to Reduce ES accident literature survey.docx
    # Роль не выяснена: не проверено, вошли ли они в финальную заявку или
    # предназначены как исходный материал для полного текста white paper.
```

## Как собирался финальный поданный PDF

`merge_submission.py` конвертирует через Word COM в PDF и сшивает в порядке:
First Page → Policy Paper Proposal (с референсами) → CV Mali → CV Nina → Budget Plan →
письмо одобрения. Подтверждено извлечением текста через `pypdf` (2026-09-10) — все
6 частей на месте, 13 страниц.

## Git

Каталог `WhitePaperISTRC26/` целиком не отслеживался git до 2026-09-10 (был untracked).
Корень репозитория — `ESCOOTER_Project/` (там же `CLAUDE.md` верхнего уровня).
