object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 126
  Height = 363
  Width = 524
  object db: TDatabase
    DatabaseName = 'CDDB'
    DriverName = 'STANDARD'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'PATH=DB'
      'DEFAULT DRIVER=PARADOX'
      'ENABLE BCD=FALSE')
    SessionName = 'Default'
    AfterConnect = dbAfterConnect
    AfterDisconnect = dbAfterDisconnect
    Left = 224
    Top = 8
  end
  object tblData: TTable
    DatabaseName = 'CDDB'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'path'
        DataType = ftString
        Size = 256
      end
      item
        Name = 'cd_id'
        DataType = ftInteger
      end
      item
        Name = 'comments'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'indxpath'
        Fields = 'path'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'indxcd_id'
        Fields = 'cd_id'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'data'
    Left = 16
    Top = 64
  end
  object tblCDS: TTable
    DatabaseName = 'CDDB'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'type_id'
        DataType = ftInteger
      end
      item
        Name = 'comments'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <
      item
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'indxName'
        Fields = 'name'
        Options = [ixUnique, ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'cds'
    Left = 16
    Top = 120
  end
  object tblCDTypes: TTable
    DatabaseName = 'CDDB'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 20
      end>
    StoreDefs = True
    TableName = 'CDTypes'
    Left = 16
    Top = 168
  end
  object qData: TQuery
    CachedUpdates = True
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'select * from data')
    UpdateObject = usData
    Left = 136
    Top = 64
  end
  object qCds: TQuery
    CachedUpdates = True
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'select * from cds')
    UpdateObject = usCDs
    Left = 136
    Top = 120
  end
  object qCDtypes: TQuery
    CachedUpdates = True
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'select * from cdtypes')
    UpdateObject = usCDtypes
    Left = 136
    Top = 168
  end
  object dsData: TDataSource
    DataSet = qData
    Left = 216
    Top = 64
  end
  object dsCDs: TDataSource
    DataSet = qCds
    Left = 216
    Top = 120
  end
  object dsCDtypes: TDataSource
    DataSet = qCDtypes
    Left = 216
    Top = 168
  end
  object usData: TUpdateSQL
    ModifySQL.Strings = (
      'update data'
      'set'
      '  path = :path,'
      '  cd_id = :cd_id,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into data'
      '  (path, cd_id, comments)'
      'values'
      '  (:path, :cd_id, :comments)')
    DeleteSQL.Strings = (
      'delete from data'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 64
  end
  object usCDs: TUpdateSQL
    ModifySQL.Strings = (
      'update cds'
      'set'
      '  name = :name,'
      '  type_id = :type_id,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into cds'
      '  (name, type_id, comments)'
      'values'
      '  (:name, :type_id, :comments)')
    DeleteSQL.Strings = (
      'delete from cds'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 120
  end
  object usCDtypes: TUpdateSQL
    ModifySQL.Strings = (
      'update cdtypes'
      'set'
      '  name = :name'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into cdtypes'
      '  (name)'
      'values'
      '  (:name)')
    DeleteSQL.Strings = (
      'delete from cdtypes'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 168
  end
end
