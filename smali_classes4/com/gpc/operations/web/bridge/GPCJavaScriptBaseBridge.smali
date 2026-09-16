.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected handlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->activity:Landroid/app/Activity;

    return-void
.end method
