.class public Lcom/gpc/operations/database/dao/OPSResourceDao;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/database/IDataBase;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "Lcom/gpc/operations/database/IDataBase<",
        "Lcom/gpc/operations/database/dao/bean/DBResource;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_FILEPATH:Ljava/lang/String; = "file_path"

.field private static final COLUMN_FILE_KEY:Ljava/lang/String; = "key"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_P1:Ljava/lang/String; = "p1"

.field private static final COLUMN_P2:Ljava/lang/String; = "p2"

.field private static final COLUMN_P3:Ljava/lang/String; = "p3"

.field private static final COLUMN_P4:Ljava/lang/String; = "p4"

.field private static final COLUMN_P5:Ljava/lang/String; = "p5"

.field private static final COLUMN_PHOTO_TYPE:Ljava/lang/String; = "photo_type"

.field private static final COLUMN_RESOURCE_ID:Ljava/lang/String; = "resource_id"

.field private static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field private static final COLUMN_VALIDITY_PERIOD:Ljava/lang/String; = "validity_period"

.field public static final DB_NAME:Ljava/lang/String; = "OPS_RESOURCE_STORAGE"

.field public static final TABLE_NAME:Ljava/lang/String; = "OPS_RESOURCE"

.field private static final TAG:Ljava/lang/String; = "OPSResourceDao"

.field private static final versionDB:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    const-string v2, "OPS_RESOURCE_STORAGE"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private insertResource(Lcom/gpc/operations/database/dao/bean/DBResource;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getType()Lcom/gpc/resourcestorage/bean/OPSUploadType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "photo_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resource_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getStatusStr()Ljava/lang/String;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getValidityPeriod()Ljava/lang/String;

    move-result-object p1

    const-string v2, "validity_period"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string p1, "OPS_RESOURCE"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    .line 15
    const-string p1, "OPSResourceDao"

    const-string v0, "insertResource error"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public delete(Lcom/gpc/operations/database/dao/bean/DBResource;)V
    .locals 6

    const-string v0, "OPSResourceDao"

    const-string v1, "delete db,result = "

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "OPS_RESOURCE"

    if-nez v3, :cond_0

    .line 6
    :try_start_1
    const-string v3, "key=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    if-gtz v3, :cond_1

    .line 8
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    const-string v3, "id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-gtz v3, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 12
    const-string v3, "resource_id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    :try_start_2
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 19
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    return-void

    :goto_2
    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 25
    :cond_4
    throw p1
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->delete(Lcom/gpc/operations/database/dao/bean/DBResource;)V

    return-void
.end method

.method public delete(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/database/dao/bean/DBResource;",
            ">;)V"
        }
    .end annotation

    const-string v0, "OPSResourceDao"

    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 27
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/database/dao/bean/DBResource;

    .line 32
    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v4, "OPS_RESOURCE"

    if-nez v3, :cond_0

    .line 33
    :try_start_1
    const-string v3, "key=?"

    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, -0x1

    :goto_1
    if-gtz v3, :cond_1

    .line 35
    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 36
    const-string v3, "id=?"

    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    :cond_1
    if-gtz v3, :cond_2

    .line 38
    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 39
    const-string v3, "resource_id=?"

    invoke-virtual {v2}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 42
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete db,result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 51
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 52
    :try_start_2
    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    .line 55
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 56
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    return-void

    :goto_2
    if-eqz v1, :cond_5

    .line 57
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 58
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 60
    :cond_5
    throw p1
.end method

.method public getDBName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "OPS_RESOURCE_STORAGE"

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "OPS_RESOURCE"

    return-object v0
.end method

.method public insert(Lcom/gpc/operations/database/dao/bean/DBResource;)J
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->query(Lcom/gpc/operations/database/dao/bean/DBResource;)Lcom/gpc/operations/database/dao/bean/DBResource;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->insertResource(Lcom/gpc/operations/database/dao/bean/DBResource;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->update(Lcom/gpc/operations/database/dao/bean/DBResource;)V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 10
    const-string v0, "OPSResourceDao"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic insert(Ljava/lang/Object;)J
    .locals 2

    .line 1
    check-cast p1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->insert(Lcom/gpc/operations/database/dao/bean/DBResource;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .line 33
    const-string v0, "onCreate sql = create table OPS_RESOURCE( id integer primary key autoincrement,status varchar(10),key varchar(50),resource_id varchar(30),photo_type varchar(10),validity_period varchar(15),p1 varchar(10),p2 varchar(10),p3 varchar(10),p4 varchar(10),p5 varchar(10),file_path varchar(200))"

    const-string v1, "OPSResourceDao"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v0, "create table OPS_RESOURCE( id integer primary key autoincrement,status varchar(10),key varchar(50),resource_id varchar(30),photo_type varchar(10),validity_period varchar(15),p1 varchar(10),p2 varchar(10),p3 varchar(10),p4 varchar(10),p5 varchar(10),file_path varchar(200))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method

.method public query(Lcom/gpc/operations/database/dao/bean/DBResource;)Lcom/gpc/operations/database/dao/bean/DBResource;
    .locals 11

    const-string v1, "OPSResourceDao"

    const-string v0, "query db,cursor.count = "

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4
    const-string v4, "OPS_RESOURCE"

    const-string v6, "key=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6
    const-string v4, "OPS_RESOURCE"

    const-string v6, "id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 8
    const-string v4, "OPS_RESOURCE"

    const-string v6, "resource_id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 12
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 15
    new-instance v0, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-direct {v0}, Lcom/gpc/operations/database/dao/bean/DBResource;-><init>()V

    .line 16
    const-string v4, "key"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 18
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setFileKey(Ljava/lang/String;)V

    .line 20
    :cond_2
    const-string v4, "resource_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_3

    .line 22
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setResourceId(Ljava/lang/String;)V

    .line 24
    :cond_3
    const-string v4, "file_path"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 26
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setLocalPath(Ljava/lang/String;)V

    .line 28
    :cond_4
    const-string v4, "status"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_5

    .line 30
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setStatusStr(Ljava/lang/String;)V

    .line 32
    :cond_5
    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_6

    .line 34
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setUniqueIdentifier(Ljava/lang/String;)V

    .line 36
    :cond_6
    const-string v4, "validity_period"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_8

    .line 38
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/gpc/operations/database/dao/bean/DBResource;->setValidityPeriod(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v0, v2

    .line 41
    :cond_8
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_9

    .line 47
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    return-object v0

    :cond_a
    if-eqz v3, :cond_b

    .line 48
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b
    return-object v2

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v2, v3

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object p1, v0

    move-object v3, v2

    .line 49
    :goto_2
    :try_start_2
    const-string v0, ""

    invoke-static {v1, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_c

    .line 52
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    return-object v2

    :goto_3
    if-eqz v2, :cond_d

    .line 53
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 55
    :cond_d
    throw p1
.end method

.method public bridge synthetic query(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->query(Lcom/gpc/operations/database/dao/bean/DBResource;)Lcom/gpc/operations/database/dao/bean/DBResource;

    move-result-object p1

    return-object p1
.end method

.method public update(Lcom/gpc/operations/database/dao/bean/DBResource;)V
    .locals 7

    const-string v0, "OPSResourceDao"

    const-string v1, "update db,result = "

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    const-string v4, "file_path"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getLocalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 8
    const-string v4, "resource_id"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getStatusStr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 11
    const-string v4, "status"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getStatusStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 14
    const-string v4, "key"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getValidityPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 17
    const-string v4, "validity_period"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getValidityPeriod()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "OPS_RESOURCE"

    if-nez v4, :cond_5

    .line 22
    :try_start_1
    const-string v4, "key=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getFileKey()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_5
    const/4 v4, -0x1

    :goto_0
    if-gtz v4, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 25
    const-string v4, "id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    :cond_6
    if-gtz v4, :cond_7

    .line 27
    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 28
    const-string v4, "resource_id=?"

    invoke-virtual {p1}, Lcom/gpc/operations/database/dao/bean/DBResource;->getResourceId()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v5, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 30
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_8

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    .line 35
    :goto_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    return-void

    :goto_2
    if-eqz v2, :cond_9

    .line 39
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 41
    :cond_9
    throw p1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/gpc/operations/database/dao/bean/DBResource;

    invoke-virtual {p0, p1}, Lcom/gpc/operations/database/dao/OPSResourceDao;->update(Lcom/gpc/operations/database/dao/bean/DBResource;)V

    return-void
.end method
