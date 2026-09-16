.class public Lcom/gpc/sdk/service/GPCAppConfigService$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/service/GPCAppConfigService$e;->onAppConfigLoadFail(Lcom/gpc/sdk/error/GPCException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

.field public final synthetic b:Lcom/gpc/sdk/error/GPCException;

.field public final synthetic c:Lcom/gpc/sdk/service/GPCAppConfigService$e;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/service/GPCAppConfigService$e;Lcom/gpc/sdk/service/appconf/GPCAppConfData;Lcom/gpc/sdk/error/GPCException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->c:Lcom/gpc/sdk/service/GPCAppConfigService$e;

    iput-object p2, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->a:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    iput-object p3, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->c:Lcom/gpc/sdk/service/GPCAppConfigService$e;

    iget-object v0, v0, Lcom/gpc/sdk/service/GPCAppConfigService$e;->a:Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-static {v0}, Lcom/gpc/sdk/service/GPCAppConfigService;->access$300(Lcom/gpc/sdk/service/GPCAppConfigService;)Lcom/gpc/sdk/service/GPCAppConfigService$g;

    move-result-object v1

    iget-object v1, v1, Lcom/gpc/sdk/service/GPCAppConfigService$g;->a:Lcom/gpc/sdk/service/GPCAppConfigService$f;

    iget-object v2, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->a:Lcom/gpc/sdk/service/appconf/GPCAppConfData;

    iget-object v3, p0, Lcom/gpc/sdk/service/GPCAppConfigService$e$a;->b:Lcom/gpc/sdk/error/GPCException;

    invoke-virtual {v0, v1, v2, v3}, Lcom/gpc/sdk/service/GPCAppConfigService;->onAppConfigLoadFromLocal(Lcom/gpc/sdk/service/GPCAppConfigService$f;Lcom/gpc/sdk/service/appconf/GPCAppConfData;Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method
