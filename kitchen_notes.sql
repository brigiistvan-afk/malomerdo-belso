-- Konyhai napi megjegyzések tábla
CREATE TABLE IF NOT EXISTS kitchen_notes (
  id    bigserial PRIMARY KEY,
  date  date NOT NULL UNIQUE,
  note  text NOT NULL DEFAULT ''
);

-- Mindenki olvashat és írhat (anon key)
ALTER TABLE kitchen_notes ENABLE ROW LEVEL SECURITY;
CREATE POLICY "public_all" ON kitchen_notes FOR ALL USING (true) WITH CHECK (true);
