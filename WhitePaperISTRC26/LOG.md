# LOG — хронологический журнал содержательных изменений

> Правило: любое содержательное изменение (текст white paper, решение по структуре,
> обработка данных, правка в докс) записывается сюда СРАЗУ и сразу коммитится
> в git — не откладывается до конца сессии. Формат записи: дата, что сделано/решено,
> какие файлы затронуты, коммит (добавляется после `git commit`).

## 2026-09-10 — Проект одобрен; создан комплект документации для непрерывности

- Nina сообщила: заявка ISTRC одобрена, грант получен, проект переходит в фазу
  исполнения (написание полного white paper).
- Проверен состав финального поданного пакета `ISTRC_Submission_Final.pdf`
  (13 стр.) через `pypdf` — First Page, Policy Paper Proposal + референсы,
  обе CV, Budget Plan, письмо одобрения — всё на месте, ничего не пропущено.
- Создан комплект continuity-документации: `ARCHITECTURE.md`, `STATE.md`,
  `NEXT_STEPS.md`, `LOG.md` (этот файл), плюс правило коммитов в
  `WhitePaperISTRC26/CLAUDE.md`.
- Созданы слэш-команды (`ESCOOTER_Project/.claude/commands/`):
  `istrc-resume.md`, `istrc-save.md`, `istrc-next.md`.
- Файлы: `WhitePaperISTRC26/{ARCHITECTURE,STATE,NEXT_STEPS,LOG,CLAUDE}.md`,
  `.claude/commands/istrc-{resume,save,next}.md`.
- Коммит: `efa8d19` — "Add ISTRC White Paper continuity kit (docs + slash commands)"
