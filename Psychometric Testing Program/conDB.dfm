object dbmApp: TdbmApp
  OldCreateOrder = False
  Height = 167
  Width = 375
  object conAppDB: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=dbUse' +
      'rs.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLED' +
      'B:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Databa' +
      'se Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lockin' +
      'g Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global Bu' +
      'lk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:C' +
      'reate System Database=False;Jet OLEDB:Encrypt Database=False;Jet' +
      ' OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact With' +
      'out Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 288
    Top = 40
  end
  object tblApplicant: TADOTable
    Active = True
    Connection = conAppDB
    CursorType = ctStatic
    TableName = 'tblApplicant'
    Left = 200
    Top = 40
  end
  object dscApp: TDataSource
    DataSet = qryApplicant
    Left = 112
    Top = 40
  end
  object qryApplicant: TADOQuery
    Active = True
    Connection = conAppDB
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM tblApplicant')
    Left = 40
    Top = 40
  end
  object tblUniversityRequests: TADOTable
    Active = True
    Connection = conAppDB
    CursorType = ctStatic
    TableName = 'tblUniversityRequests'
    Left = 200
    Top = 88
  end
end
