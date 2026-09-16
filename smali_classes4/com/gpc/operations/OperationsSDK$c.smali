.class public Lcom/gpc/operations/OperationsSDK$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/OperationsSDK;->initWithConfig(Ljava/lang/String;Lcom/gpc/operations/OPSOnPreparedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskResultListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/OPSOnPreparedListener;

.field public final synthetic b:Lcom/gpc/operations/OperationsSDK;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/OperationsSDK;Lcom/gpc/operations/OPSOnPreparedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/OperationsSDK$c;->b:Lcom/gpc/operations/OperationsSDK;

    iput-object p2, p0, Lcom/gpc/operations/OperationsSDK$c;->a:Lcom/gpc/operations/OPSOnPreparedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    const-string p2, "OperationsSDK"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/gpc/operations/OperationsSDK$c;->a:Lcom/gpc/operations/OPSOnPreparedListener;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2, p1}, Lcom/gpc/operations/OPSOnPreparedListener;->onPrepared(Lcom/gpc/operations/migrate/error/GPCException;)V

    :cond_1
    return-void
.end method
