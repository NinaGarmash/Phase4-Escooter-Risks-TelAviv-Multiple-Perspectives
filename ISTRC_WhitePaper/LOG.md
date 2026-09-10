# LOG — хронологический журнал содержательных изменений

> Правило: любое содержательное изменение записывается сюда СРАЗУ и сразу
> коммитится в git — не откладывается до конца сессии.

## 2026-09-10 — Проект одобрен; первая попытка continuity-кита (в неверной папке)

- Nina сообщила: заявка ISTRC одобрена, грант получен.
- Собран continuity-кит (ARCHITECTURE/STATE/NEXT_STEPS/LOG/CLAUDE.md) в
  `ESCOOTER_Project/WhitePaperISTRC26/` — **как выяснилось позже в тот же
  день, это была устаревшая архивная папка майской заявки**, не реальный
  проект. Коммиты `efa8d19`, `5f2c899`, `3878756` в старой истории.
- В тот же день Nina указала на настоящую папку гранта —
  `ANYWAY/ISTRC_WHITE_PAPER/` (не под git, сиблинг `ESCOOTER_Project`) — с
  реальными фактами: выиграно, дедлайн 2026-12-11, есть черновик
  `White_Paper_Draft_v1.md`.

## 2026-09-11 — Объединение двух папок в `ISTRC_WhitePaper/`

Устранена задвоенность: было `ESCOOTER_Project/WhitePaperISTRC26/` (архив
майской заявки) + `ANYWAY/ISTRC_WHITE_PAPER/` (реальный грант, не под git) —
43 файла с существенными пересечениями. Хэш-сравнение (sha256) нашло только
2 байт-в-байт идентичных дубля (Call for Papers PDF, CV Mali Sher.docx);
остальное — версии одного документа под разными именами, накопившиеся за
апрель-май (7 версий текста Policy Paper Proposal, 3 версии First Page,
2 версии Budget Plan). Также переклассифицирован файл
`2_0f42ed41-...pdf` — не квитанция портала (как думали раньше), а отчёт
Центра исследований Кнессета про электросамокаты на иврите (источник, не
админ-документ).

Результат — единая папка `ESCOOTER_Project/ISTRC_WhitePaper/`:
- `draft/White_Paper_Draft_v1.md` — единственный живой файл (был в
  `ISTRC_WHITE_PAPER/`).
- `sources/` — 4 литобзора (были в `WhitePaperISTRC26/NewMali/`, переименованы
  без опечаток), `Selected_references.docx`, отчёт Кнессета.
- `proposal_archive/` — канонический поданный/одобренный комплект (13
  файлов): официальная копия ISTRC (`Submission_Official_ISTRC.pdf`, был
  "10. Mali Sher.pdf"), реально смёрженные в подачу proposal/first
  page/budget/CV (по списку файлов в `merge_submission.py`), оба письма
  одобрения (research authority + ISTRC budgetary commitment, англ+иврит),
  чек-лист, сам скрипт мерджа.
- `proposal_archive/drafts_history/` — 14 промежуточных версий (не для
  работы, только история): `Sher_Mali_042026.docx`, `codex_...060526.docx`,
  `Policy Paper Proposal_20260512 MS.docx`, `ISTRC Policy Paper
  Proposal.docx`, `ISTRC First Page.docx`, `ISTRC Budget Plan.docx`,
  `CV_Nina_Garmash_ISTRC.docx` + `.md` версии обеих CV, `clean_references_
  20260516.ps1`, `White Paper Policy Paper Proposal_20260517.docx`
  (сознательно исключённая из финального мерджа версия),
  `ISTRC_Submission_Final_self_merged.pdf` (наша копия мерджа, отличная от
  официальной ISTRC-копии), `ISTRC Policy White Paper 1stPage.docx` +
  `...Proposal.docx` (ранние варианты из `ISTRC_WHITE_PAPER/`, не вошедшие в
  финальную подачу).
- Удалены (не архивированы, т.к. байт-в-байт идентичны сохранённым
  каноническим копиям): дубль `CV Mali Sher.docx` из старого submission
  package, дубль `Reference - ISTRC Call.pdf` из того же package.
- Старые папки `ESCOOTER_Project/WhitePaperISTRC26/` и
  `ANYWAY/ISTRC_WHITE_PAPER/` удалены после переноса.
- Continuity-кит и слэш-команды (`/istrc-resume`, `/istrc-next`, `/istrc-save`)
  переписаны под новый путь и реальные факты проекта (было — на устаревших
  майских данных).
- Файлы: весь `ESCOOTER_Project/ISTRC_WhitePaper/` создан заново; старые
  `WhitePaperISTRC26/*` и `ISTRC_WHITE_PAPER/*` удалены;
  `.claude/commands/istrc-{resume,next,save}.md` отредактированы.
- Коммит: _(будет добавлен после `git commit`)_
