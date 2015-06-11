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
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'path'
        DataType = ftString
        Size = 1024
      end
      item
        Name = 'thedate'
        DataType = ftDateTime
      end
      item
        Name = 'cd_id'
        DataType = ftInteger
      end
      item
        Name = 'comments'
        DataType = ftString
        Size = 200
      end>
    IndexDefs = <
      item
        Name = 'tblDataIndex1'
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
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'name'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'type_id'
        DataType = ftInteger
      end
      item
        Name = 'comments'
        DataType = ftString
        Size = 150
      end>
    IndexDefs = <
      item
        Name = 'tblCDSIndex1'
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
        Attributes = [faReadonly]
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
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select * from data d inner join cds c on d.cd_id=c.id'
      'where c.name=:name')
    UpdateObject = usData
    Left = 136
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'name'
        ParamType = ptUnknown
        Size = 51
      end>
  end
  object qCds: TQuery
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select * from cds')
    UpdateObject = usCDs
    Left = 136
    Top = 120
  end
  object qCDtypes: TQuery
    DatabaseName = 'CDDB'
    RequestLive = True
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
      '  thedate = :thedate,'
      '  cd_id = :cd_id,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into data'
      '  (path, thedate, cd_id, comments)'
      'values'
      '  (:path, :thedate, :cd_id, :comments)')
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
  object qDEl_cd: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'delete  from cds c '
      'where c.id=:cd_id')
    Left = 384
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_id'
        ParamType = ptUnknown
      end>
  end
  object qDel_Data_by_cd_id: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'delete  from data d'
      'where cd_id=:cd_id')
    Left = 384
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cd_id'
        ParamType = ptUnknown
      end>
  end
  object qWork: TQuery
    DatabaseName = 'CDDB'
    Left = 384
    Top = 208
  end
  object qInsertIntoCD: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'insert into data(path,cd_id,thedate,comments)'
      'values (:path,:cd_id,:thedate,:comments)')
    Left = 176
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'path'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cd_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'thedate'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comments'
        ParamType = ptUnknown
      end>
  end
  object qDataWithOutCD: TQuery
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select * from data')
    UpdateObject = usDATAQOCD
    Left = 128
    Top = 224
  end
  object dsDAtaWOCD: TDataSource
    DataSet = qDataWithOutCD
    Left = 208
    Top = 224
  end
  object usDATAQOCD: TUpdateSQL
    ModifySQL.Strings = (
      'update data'
      'set'
      '  path = :path,'
      '  thedate = :thedate,'
      '  cd_id = :cd_id,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into data'
      '  (path, thedate, cd_id, comments)'
      'values'
      '  (:path, :thedate, :cd_id, :comments)')
    DeleteSQL.Strings = (
      'delete from data'
      'where'
      '  id = :OLD_id')
    Left = 288
    Top = 224
  end
  object qDElData: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'delete from data'
      'where id=:id')
    Left = 376
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
end
