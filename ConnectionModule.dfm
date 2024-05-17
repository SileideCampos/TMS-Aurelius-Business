object SQLiteConnection: TSQLiteConnection
  Height = 198
  Width = 282
  object AureliusConnection: TAureliusConnection
    AdapterName = 'FireDac'
    AdaptedConnection = FDConnection
    SQLDialect = 'SQLite'
    Left = 72
    Top = 88
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=C:\dev\view\VividDay5\banco2.sqlite3'
      'DriverID=SQLite')
    Left = 184
    Top = 40
  end
end
