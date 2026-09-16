.class public final Lcom/gpc/operations/migrate/error/UnderlyingErrorCode$HTTPErrorCode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/error/UnderlyingErrorCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HTTPErrorCode"
.end annotation


# static fields
.field public static final CREATE_REQUEST_FAIL:I = 0x385

.field public static final INVALID_REQUEST_URL:I = 0x384

.field public static final REQUEST_METHOD_UNSUPPORT:I = 0x387

.field public static final REQUEST_THROW_EXCEPTION_FAIL:I = 0x386

.field public static final REQUEST_THROW_RUNTIME_EXCEPTION_FAIL:I = 0x388


# instance fields
.field final synthetic this$0:Lcom/gpc/operations/migrate/error/UnderlyingErrorCode;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/migrate/error/UnderlyingErrorCode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/error/UnderlyingErrorCode$HTTPErrorCode;->this$0:Lcom/gpc/operations/migrate/error/UnderlyingErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
