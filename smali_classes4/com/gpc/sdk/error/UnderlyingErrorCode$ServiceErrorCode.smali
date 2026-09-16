.class public final Lcom/gpc/sdk/error/UnderlyingErrorCode$ServiceErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/error/UnderlyingErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ServiceErrorCode"
.end annotation


# static fields
.field public static final BUSINESS_ERROR:I = 0x1f40

.field public static final ILLEGAL_REQUEST_PARAM_ERROR:I = 0x138a

.field public static final INVALID_REQUEST_URL:I = 0xbb8

.field public static final LOCAL_DATA_INVALID_ERROR:I = 0x1b58

.field public static final REMOTE_DATA_EMPTY_ERROR:I = 0x1388

.field public static final REMOTE_DATA_FORMAT_ERROR:I = 0x1389

.field public static final REMOTE_SERVICE_ERROR:I = 0x1770

.field public static final SYSTEM_NETWORK_ERROR:I = 0xfa0

.field public static final UNKONW_ERROR:I = -0x1


# instance fields
.field final synthetic this$0:Lcom/gpc/sdk/error/UnderlyingErrorCode;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/error/UnderlyingErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/error/UnderlyingErrorCode$ServiceErrorCode;->this$0:Lcom/gpc/sdk/error/UnderlyingErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
