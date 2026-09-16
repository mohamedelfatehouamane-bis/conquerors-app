.class public Lcom/gpc/util/EmulatorDetector$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/EmulatorDetector;->detect(Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;

.field public final synthetic b:Lcom/gpc/util/EmulatorDetector;


# direct methods
.method public constructor <init>(Lcom/gpc/util/EmulatorDetector;Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/util/EmulatorDetector$a;->b:Lcom/gpc/util/EmulatorDetector;

    iput-object p2, p0, Lcom/gpc/util/EmulatorDetector$a;->a:Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/gpc/util/EmulatorDetector$a;->b:Lcom/gpc/util/EmulatorDetector;

    invoke-virtual {v0}, Lcom/gpc/util/EmulatorDetector;->detect()Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/gpc/util/EmulatorDetector$a;->b:Lcom/gpc/util/EmulatorDetector;

    invoke-virtual {v1}, Lcom/gpc/util/EmulatorDetector;->isKapouEmulator()Z

    move-result v1

    .line 3
    iget-object v2, p0, Lcom/gpc/util/EmulatorDetector$a;->b:Lcom/gpc/util/EmulatorDetector;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "This System is Emulator: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/EmulatorDetector;->access$000(Lcom/gpc/util/EmulatorDetector;Ljava/lang/String;)V

    .line 4
    iget-object v2, p0, Lcom/gpc/util/EmulatorDetector$a;->a:Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v2, v0, v1}, Lcom/gpc/util/EmulatorDetector$OnEmulatorDetectorListener;->onResult(ZZ)V

    :cond_0
    return-void
.end method
