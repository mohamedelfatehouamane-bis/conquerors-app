.class public Lcom/gpc/operations/OperationsSDK$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable;


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
        "Lcom/gpc/operations/migrate/utils/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/OperationsSDK;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/OperationsSDK;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/OperationsSDK$b;->a:Lcom/gpc/operations/OperationsSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onAsyncInit()V

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->onInitSDKFinish()V

    const/4 v0, 0x0

    return-object v0
.end method
