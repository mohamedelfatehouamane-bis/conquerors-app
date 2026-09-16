.class public Lcom/gpc/photoselector/controller/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"


# static fields
.field private static final QUERY_COLUMN:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "VideoController"


# instance fields
.field private context:Landroid/content/Context;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 46
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

    sput-object v0, Lcom/gpc/photoselector/controller/VideoController;->QUERY_COLUMN:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/gpc/photoselector/controller/VideoController;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/photoselector/controller/VideoController;->resolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private containMP4Selection()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "mime_type=?"

    return-object v0
.end method

.method private containMP4SelectionArgs()[Ljava/lang/String;
    .locals 2

    .line 42
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    const-string v1, "mp4"

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;
    .locals 4

    .line 86
    new-instance v0, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v0}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 87
    const-string v1, "video"

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 89
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 90
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 94
    :cond_0
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 95
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V

    .line 99
    :cond_1
    const-string v1, "title"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 101
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_2
    const-string v1, ""

    .line 105
    :goto_0
    const-string v2, "mime_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 106
    invoke-interface {p1, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 107
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 112
    :cond_3
    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setName(Ljava/lang/String;)V

    .line 114
    const-string v1, "_size"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 115
    invoke-interface {p1, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 116
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/photoselector/model/PhotoModel;->setSize(J)V

    .line 119
    :cond_4
    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/gpc/photoselector/model/PhotoModel;->getId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/photoselector/model/PhotoModel;->setUri(Ljava/lang/String;)V

    .line 120
    const-string v1, "date_added"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/photoselector/model/PhotoModel;->setDateAdded(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gpc/photoselector/controller/VideoController;->isMp4(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private isMp4(Ljava/lang/String;)Z
    .locals 1

    .line 230
    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
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

    .line 198
    iget-object v0, p0, Lcom/gpc/photoselector/controller/VideoController;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/gpc/photoselector/controller/VideoController;->QUERY_COLUMN:[Ljava/lang/String;

    .line 201
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v3

    const-string v4, "mp4"

    invoke-virtual {v3, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_added"

    .line 198
    const-string v3, "bucket_display_name = ? AND mime_type = ?"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 203
    const-string v1, "VideoController"

    if-eqz p1, :cond_4

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    .line 209
    :cond_1
    invoke-direct {p0, p1}, Lcom/gpc/photoselector/controller/VideoController;->creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 211
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_3

    .line 220
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v2

    .line 204
    :cond_4
    :goto_0
    :try_start_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 220
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    move-object p1, v0

    .line 223
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

    .line 216
    :try_start_4
    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_6

    .line 220
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    move-object p1, v0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_6
    :goto_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :goto_2
    if-eqz p1, :cond_7

    .line 220
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    move-object p1, v0

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_7
    :goto_3
    throw v2
.end method

.method public getAlbums()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gpc/photoselector/model/AlbumModel;",
            ">;"
        }
    .end annotation

    .line 132
    const-string v0, "ops_a_recent_pictures"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 133
    iget-object v2, p0, Lcom/gpc/photoselector/controller/VideoController;->resolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v8, "_data"

    const-string v9, "date_added"

    const-string v4, "_size"

    const-string v10, "_id"

    const-string v11, "bucket_display_name"

    filled-new-array {v8, v9, v4, v10, v11}, [Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/VideoController;->containMP4Selection()Ljava/lang/String;

    move-result-object v5

    .line 137
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/VideoController;->containMP4SelectionArgs()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 133
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 140
    const-string v3, "VideoController"

    if-eqz v2, :cond_7

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 143
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToLast()Z

    .line 145
    new-instance v4, Lcom/gpc/photoselector/model/AlbumModel;

    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12, v6, v7}, Lcom/gpc/photoselector/model/AlbumModel;-><init>(Ljava/lang/String;ILcom/gpc/photoselector/model/PhotoModel;Z)V

    const/16 v5, 0xa

    .line 146
    invoke-virtual {v4, v5}, Lcom/gpc/photoselector/model/AlbumModel;->setOrder(I)V

    .line 147
    invoke-static {v0}, Lcom/gpc/i18n/I18NHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-virtual {v4}, Lcom/gpc/photoselector/model/AlbumModel;->increaseCount()V

    .line 151
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v5, Lcom/gpc/photoselector/model/PhotoModel;

    invoke-direct {v5}, Lcom/gpc/photoselector/model/PhotoModel;-><init>()V

    .line 153
    const-string v6, "video"

    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/PhotoModel;->setType(Ljava/lang/String;)V

    .line 154
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/PhotoModel;->setAbsoluteFileSystemPath(Ljava/lang/String;)V

    .line 155
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    invoke-virtual {v5, v13, v14}, Lcom/gpc/photoselector/model/PhotoModel;->setId(J)V

    .line 156
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gpc/photoselector/model/PhotoModel;->setDateAdded(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v5}, Lcom/gpc/photoselector/model/PhotoModel;->getAbsoluteFileSystemPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/gpc/photoselector/controller/VideoController;->isMp4(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {v4}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v6

    if-nez v6, :cond_3

    .line 161
    invoke-virtual {v4, v5}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 164
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 166
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/photoselector/model/AlbumModel;

    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {v0}, Lcom/gpc/photoselector/model/AlbumModel;->getPhotoModel()Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v6

    if-nez v6, :cond_4

    .line 169
    invoke-virtual {v0, v5}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 171
    :cond_4
    invoke-virtual {v0}, Lcom/gpc/photoselector/model/AlbumModel;->increaseCount()V

    goto :goto_0

    .line 174
    :cond_5
    new-instance v6, Lcom/gpc/photoselector/model/AlbumModel;

    invoke-direct {v6, v0, v7, v5, v12}, Lcom/gpc/photoselector/model/AlbumModel;-><init>(Ljava/lang/String;ILcom/gpc/photoselector/model/PhotoModel;Z)V

    .line 175
    invoke-virtual {v6, v5}, Lcom/gpc/photoselector/model/AlbumModel;->setPhotoModel(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 176
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_6
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v2, :cond_9

    .line 185
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return-object v1

    .line 141
    :cond_7
    :goto_1
    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_8

    .line 185
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v4

    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v4

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 181
    :try_start_4
    const-string v4, ""

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_9

    .line 185
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    return-object v1

    :goto_3
    if-eqz v2, :cond_a

    .line 185
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 188
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_a
    :goto_4
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

    .line 53
    iget-object v0, p0, Lcom/gpc/photoselector/controller/VideoController;->resolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/gpc/photoselector/controller/VideoController;->QUERY_COLUMN:[Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/VideoController;->containMP4Selection()Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-direct {p0}, Lcom/gpc/photoselector/controller/VideoController;->containMP4SelectionArgs()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "date_added"

    .line 53
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 59
    const-string v2, "VideoController"

    if-eqz v1, :cond_4

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToLast()Z

    .line 65
    :cond_1
    invoke-direct {p0, v1}, Lcom/gpc/photoselector/controller/VideoController;->creatPhotoModel(Landroid/database/Cursor;)Lcom/gpc/photoselector/model/PhotoModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    if-eqz v1, :cond_3

    .line 76
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v3

    .line 60
    :cond_4
    :goto_0
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 76
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v3

    :catch_1
    move-exception v0

    .line 79
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

    .line 72
    :try_start_4
    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_6

    .line 76
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_6
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :goto_2
    if-eqz v1, :cond_7

    .line 76
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_7
    :goto_3
    throw v3
.end method
