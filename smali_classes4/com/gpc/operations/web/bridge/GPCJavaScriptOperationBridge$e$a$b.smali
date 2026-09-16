.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:J

.field public final synthetic e:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->e:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;

    iput p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->a:I

    iput-object p3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->e:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v1, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    iget v2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->a:I

    iget-object v3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->c:Ljava/lang/String;

    iget-wide v5, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a$b;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, ""

    invoke-interface/range {v1 .. v6}, Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;->pickupMedia(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void
.end method
