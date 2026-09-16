.class public Lcom/gpc/webapp/ui/CommonWebAppController$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/webapp/ui/CommonWebAppController;->onQueryProducts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/webapp/ui/CommonWebAppController;


# direct methods
.method public constructor <init>(Lcom/gpc/webapp/ui/CommonWebAppController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/webapp/ui/CommonWebAppController$c;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueried(ILorg/json/JSONArray;I)V
    .locals 1

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/gpc/webapp/ui/CommonWebAppController$c;->a:Lcom/gpc/webapp/ui/CommonWebAppController;

    invoke-static {v0}, Lcom/gpc/webapp/ui/CommonWebAppController;->access$900(Lcom/gpc/webapp/ui/CommonWebAppController;)Lcom/gpc/operations/base/JavaScriptHandlerImpl;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->onQueried(ILorg/json/JSONArray;I)V

    return-void
.end method
