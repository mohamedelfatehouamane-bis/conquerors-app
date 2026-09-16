.class public Lcom/gpc/operations/utils/OPSToastUtils$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/utils/OPSToastUtils;->show(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/operations/utils/OPSToastUtils;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/utils/OPSToastUtils;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils$a;->b:Lcom/gpc/operations/utils/OPSToastUtils;

    iput-object p2, p0, Lcom/gpc/operations/utils/OPSToastUtils$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils$a;->b:Lcom/gpc/operations/utils/OPSToastUtils;

    iget-object v1, p0, Lcom/gpc/operations/utils/OPSToastUtils$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/OPSToastUtils;->access$000(Lcom/gpc/operations/utils/OPSToastUtils;Ljava/lang/String;)V

    return-void
.end method
