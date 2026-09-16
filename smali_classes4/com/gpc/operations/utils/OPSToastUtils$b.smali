.class public Lcom/gpc/operations/utils/OPSToastUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/utils/OPSToastUtils;->show(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/gpc/operations/utils/OPSToastUtils;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/utils/OPSToastUtils;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils$b;->b:Lcom/gpc/operations/utils/OPSToastUtils;

    iput p2, p0, Lcom/gpc/operations/utils/OPSToastUtils$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils$b;->b:Lcom/gpc/operations/utils/OPSToastUtils;

    iget v1, p0, Lcom/gpc/operations/utils/OPSToastUtils$b;->a:I

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/OPSToastUtils;->access$100(Lcom/gpc/operations/utils/OPSToastUtils;I)V

    return-void
.end method
