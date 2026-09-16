.class public Lcom/gpc/operations/base/picker/IntentBasePicker$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/base/picker/IntentBasePicker;->pickup(JILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:J

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/gpc/operations/base/picker/IntentBasePicker;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/picker/IntentBasePicker;JILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->e:Lcom/gpc/operations/base/picker/IntentBasePicker;

    iput-wide p2, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->a:J

    iput p4, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->b:I

    iput-object p5, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->e:Lcom/gpc/operations/base/picker/IntentBasePicker;

    iget-wide v1, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->a:J

    iget v3, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->b:I

    iget-object v4, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/gpc/operations/base/picker/IntentBasePicker$a;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/gpc/operations/base/picker/IntentBasePicker;->access$000(Lcom/gpc/operations/base/picker/IntentBasePicker;JILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 3
    const-string v1, "BaseMediaPicker"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
