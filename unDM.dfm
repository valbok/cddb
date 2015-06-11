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
        Name = 'name'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'path'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'path_id'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'parent_id'
        DataType = ftInteger
      end
      item
        Name = 'type_id'
        DataType = ftInteger
      end
      item
        Name = 'thedate'
        DataType = ftDateTime
      end
      item
        Name = 'comments'
        DataType = ftString
        Size = 255
      end>
    IndexDefs = <
      item
        Name = 'tblDataIndex1'
        Fields = 'id'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'data'
    Left = 16
    Top = 72
  end
  object tblTypes: TTable
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
        Name = 'thedate'
        DataType = ftDateTime
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
    TableName = 'types'
    Left = 16
    Top = 120
  end
  object qData: TQuery
    CachedUpdates = True
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select d.id d_id, d.name d_name ,d.parent_id d_parent_id, '
      'd.type_id d_type_id, d.thedate d_thedate, d.path d_path,'
      'd.comments d_comments,'
      ' t.id t_id, t.name t_name,t.comments t_comments, t.thedate'
      'from data d left join types t'
      'on d.type_id=t.id'
      'where parent_id=:parent_id')
    UpdateObject = usData
    Left = 136
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'parent_id'
        ParamType = ptUnknown
      end>
  end
  object qFetchTypesByName: TQuery
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select id as id from types'
      'where name =:name')
    Left = 88
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end>
  end
  object dsData: TDataSource
    DataSet = qData
    Left = 216
    Top = 64
  end
  object dsFetchTypesByName: TDataSource
    DataSet = qFetchTypesByName
    Left = 216
    Top = 168
  end
  object usData: TUpdateSQL
    ModifySQL.Strings = (
      'update data'
      'set'
      '  name = :name,'
      '  path = :path,'
      '  parent_id = :parent_id,'
      '  type_id = :type_id,'
      '  thedate = :thedate,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into data'
      '  (name, path, parent_id, type_id, thedate, comments)'
      'values'
      '  (:name, :path, :parent_id, :type_id, :thedate, :comments)')
    DeleteSQL.Strings = (
      'delete from data'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 64
  end
  object qDelDataByPath: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'delete  from data d'
      'where path like :path')
    Left = 400
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'path'
        ParamType = ptUnknown
      end>
  end
  object qWork: TQuery
    DatabaseName = 'CDDB'
    Left = 440
    Top = 256
  end
  object qInsertIntoData: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      
        'insert into data( name, path, parent_id, type_id, thedate,commen' +
        'ts)'
      'values (:name, :path, :parent_id, :type_id, :thedate,:comments)')
    Left = 56
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'path'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parent_id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'type_id'
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
  object qDataWithOutp: TQuery
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      
        'select id id,name,path,parent_id,type_id,thedate,comments from d' +
        'ata')
    UpdateObject = usDATAWOP
    Left = 128
    Top = 224
  end
  object dsDAtaWOP: TDataSource
    DataSet = qDataWithOutp
    Left = 208
    Top = 224
  end
  object usDATAWOP: TUpdateSQL
    ModifySQL.Strings = (
      'update data'
      'set'
      '  name = :name,'
      '  parent_id = :parent_id,'
      '  type_id = :type_id,'
      '  thedate = :thedate,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into data'
      '  (name, parent_id, type_id, thedate, comments)'
      'values'
      '  (:name, :parent_id, :type_id, :thedate, :comments)')
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
    Left = 400
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qTypes: TQuery
    CachedUpdates = True
    DatabaseName = 'CDDB'
    RequestLive = True
    SQL.Strings = (
      'select * from types')
    UpdateObject = usTypes
    Left = 136
    Top = 120
  end
  object dsTypes: TDataSource
    DataSet = qTypes
    Left = 216
    Top = 120
  end
  object usTypes: TUpdateSQL
    ModifySQL.Strings = (
      'update types'
      'set'
      '  name = :name,'
      '  thedate = :thedate,'
      '  comments = :comments'
      'where'
      '  id = :OLD_id')
    InsertSQL.Strings = (
      'insert into types'
      '  (name, thedate, comments)'
      'values'
      '  (:name, :thedate, :comments)')
    DeleteSQL.Strings = (
      'delete from types'
      'where'
      '  id = :OLD_id')
    Left = 296
    Top = 128
  end
  object qFetchDataByName: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'select id,parent_id from data'
      'where name =:name'
      'and parent_id=:parent_id')
    Left = 40
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'parent_id'
        ParamType = ptUnknown
      end>
  end
  object dsFetchDByName: TDataSource
    DataSet = qFetchDataByName
    Left = 144
    Top = 288
  end
  object dsFetchDataById: TDataSource
    DataSet = qFetchDataById
    Left = 328
    Top = 288
  end
  object qFetchDataById: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'select path path,id id,parent_id parent_id from data'
      'where id =:id')
    Left = 248
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end>
  end
  object qInsertIntoTypes: TQuery
    DatabaseName = 'CDDB'
    SQL.Strings = (
      'insert into types (name,thedate)'
      'values(:name,:thedate)')
    Left = 312
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'thedate'
        ParamType = ptUnknown
      end>
  end
end
