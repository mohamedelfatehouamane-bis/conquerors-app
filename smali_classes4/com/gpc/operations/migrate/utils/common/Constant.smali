.class public final Lcom/gpc/operations/migrate/utils/common/Constant;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/migrate/utils/common/Constant$DEPRECATED_FIELD;,
        Lcom/gpc/operations/migrate/utils/common/Constant$PERSISTENCE_FILE_NAME;
    }
.end annotation


# static fields
.field public static final EVENT_LOGS_GAME_ITEMS_BACKUP_ERROR:Ljava/lang/String; = "payment.items.backup"

.field public static final EVENT_LOGS_GAME_ITEMS_FALLFLAT_ERROR:Ljava/lang/String; = "payment.items.fallflat"

.field public static final EVENT_LOGS_ITEM_CACHE_ERROR:Ljava/lang/String; = "payment.itemcache"

.field public static final FLAG_IGNORE_APIGATEWAY_DIGEST:Ljava/lang/String; = "flag_ignore_apigateway_digest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
