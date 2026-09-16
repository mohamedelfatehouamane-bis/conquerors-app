.class public Lcom/gpc/photoselector/controller/AlbumController;
.super Ljava/lang/Object;
.source "AlbumController.java"


# static fields
.field private static final QUERY_COLUMN:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AlbumController"


# instance fields
.field private context:Landroid/content/Context;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 52
    const-string v6, "title"

    const-string v7, "mime_type"

    const-string v0, "bucket_display_name"

    const-string v1, "_data"

    const-string v2, "date_added"

    const-string v3, "_size"

    const-string v4, "_id"

    const-string v5, "_display_name"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gpc/photoselector/controller/AlbumController;->QUERY_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/gpc/photoselector/controller/AlbumController;->context:Landroid/content/Context;

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/controller/AlbumController;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;
    .locals 6

    .line 91
    const-string v0, "_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    .line 92
    new-instance v1, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v1}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 93
    const-string v2, "image"

    invoke-virtual {v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 95
    const-string v2, "_data"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 96
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 100
    :cond_0
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 101
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V

    .line 105
    :cond_1
    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 107
    :cond_2
    const-string v2, ""

    .line 111
    :goto_0
    const-string v3, "mime_type"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 112
    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 113
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    :cond_3
    invoke-virtual {v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setName(Ljava/lang/String;)V

    .line 120
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 122
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/gpc/photoselector/model/PhotoModel;->setSize(J)V

    .line 125
    :cond_4
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/gpc/photoselector/model/PhotoModel;->getId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gpc/photoselector/model/PhotoModel;->setUri(Ljava/lang/String;)V

    .line 126
    const-string v0, "date_added"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/photoselector/model/PhotoModel;->setDateAdded(Ljava/lang/String;)V

    return-object v1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private mimeTypeSelection()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "mime_type IN (?,?,?,?,?)"

    return-object v0
.end method

.method private mimeTypeSelectionArgs()[Ljava/lang/String;
    .locals 6

    .line 44
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const-string v1, "bmp"

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    const-string v2, "png"

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    const-string v3, "jpg"

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const-string v4, "jpeg"

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v4

    const-string v5, "webp"

    invoke-virtual {v4, v5}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    filled-new-array {v2, v1, v3, v0, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlbum(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/gpc/photoselector/controller/AlbumController;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/gpc/photoselector/controller/AlbumController;->QUERY_COLUMN:[Ljava/lang/String;

    .line 205
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const-string v4, "gif"

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_added"

    .line 203
    const-string v3, "bucket_display_name = ? AND mime_type<>?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 207
    const-string v1, "AlbumController"

    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 210
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 212
    :cond_1
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/controller/AlbumController;->creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 214
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 223
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    .line 208
    :cond_4
    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 223
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 219
    :try_start_4
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_6

    .line 223
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :goto_2
    if-eqz p1, :cond_7

    .line 223
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object p1, v0

    .line 226
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_7
    :goto_3
    throw v2
.end method

.method public getAlbums()Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/photoselector/model/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 138
    const-string v0, "ops_a_recent_pictures"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v2, p0

    .line 139
    iget-object v3, v2, Lcom/gpc/photoselector/controller/AlbumController;->resolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v9, "_data"

    const-string v10, "date_added"

    const-string v11, "_size"

    const-string v12, "_id"

    const-string v13, "bucket_display_name"

    filled-new-array {v9, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-direct {v2}, Lcom/gpc/photoselector/controller/AlbumController;->mimeTypeSelection()Ljava/lang/String;

    move-result-object v6

    .line 142
    invoke-direct {v2}, Lcom/gpc/photoselector/controller/AlbumController;->mimeTypeSelectionArgs()[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 139
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 145
    const-string v4, "AlbumController"

    if-eqz v3, :cond_7

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_3

    .line 148
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToLast()Z

    .line 150
    new-instance v5, Lcom/gpc/photoselector/model/AlbumModel;

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v14, 0x0

    invoke-direct {v5, v6, v14, v7, v8}, Lcom/gpc/photoselector/model/AlbumModel;-><init>(Ljava/lang/String;ILcom/gpc/photoselector/model/PhotoModel;Z)V

    const/16 v6, 0xa

    .line 151
    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/AlbumModel;->setOrder(I)V

    .line 152
    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :goto_0
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v6, 0x2800

    if-ge v0, v6, :cond_1

    move-object v15, v9

    goto :goto_2

    .line 158
    :cond_1
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/AlbumModel;->increaseCount()V

    .line 159
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    new-instance v6, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v6}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 161
    const-string v7, "image"

    invoke-virtual {v6, v7}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 162
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 163
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object v15, v9

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V

    .line 164
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/gpc/photoselector/model/PhotoModel;->setDateAdded(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v7

    if-nez v7, :cond_2

    .line 166
    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 169
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 170
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 171
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/model/AlbumModel;

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {v0}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v7

    if-nez v7, :cond_3

    .line 174
    invoke-virtual {v0, v6}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 176
    :cond_3
    invoke-virtual {v0}, Lcom/gpc/photoselector/model/AlbumModel;->increaseCount()V

    goto :goto_1

    .line 179
    :cond_4
    new-instance v7, Lcom/gpc/photoselector/model/AlbumModel;

    const/4 v8, 0x1

    invoke-direct {v7, v0, v8, v6, v14}, Lcom/gpc/photoselector/model/AlbumModel;-><init>(Ljava/lang/String;ILcom/gpc/photoselector/model/PhotoModel;Z)V

    .line 180
    invoke-virtual {v7, v6}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 181
    invoke-interface {v1, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v8, 0x1

    .line 184
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_6

    if-eqz v3, :cond_9

    .line 190
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    :cond_6
    move-object v9, v15

    goto/16 :goto_0

    .line 146
    :cond_7
    :goto_3
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_8

    .line 190
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    .line 186
    :try_start_4
    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_9

    .line 190
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    return-object v1

    :goto_5
    if-eqz v3, :cond_a

    .line 190
    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_a
    :goto_6
    throw v1
.end method

.method public getCurrent()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/photoselector/model/PhotoModel;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/gpc/photoselector/controller/AlbumController;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/gpc/photoselector/controller/AlbumController;->QUERY_COLUMN:[Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/AlbumController;->mimeTypeSelection()Ljava/lang/String;

    move-result-object v3

    .line 62
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/AlbumController;->mimeTypeSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_added"

    .line 59
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 65
    const-string v2, "AlbumController"

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 70
    :cond_1
    invoke-direct {p0, v1}, Lcom/gpc/photoselector/controller/AlbumController;->creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 72
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 81
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3

    .line 66
    :cond_4
    :goto_0
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 81
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v3

    :catchall_0
    move-exception v0

    move-object v3, v0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 77
    :try_start_4
    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    .line 81
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_6
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :goto_2
    if-eqz v1, :cond_7

    .line 81
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_7
    :goto_3
    throw v3
.end method
