.class public Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/zxing/Result;

.field public final synthetic b:Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;


# direct methods
.method public constructor <init>(Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;Lcom/google/zxing/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    iput-object p2, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;->a:Lcom/google/zxing/Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    iget-object v0, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-static {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;

    iget-object v0, v0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a;->b:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-static {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->b(Lme/dm7/barcodescanner/zxing/ZXingScannerView;)Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;

    move-result-object v0

    iget-object v1, p0, Lme/dm7/barcodescanner/zxing/ZXingScannerView$a$a;->a:Lcom/google/zxing/Result;

    invoke-interface {v0, v1}, Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;->handleResult(Lcom/google/zxing/Result;)V

    :cond_0
    return-void
.end method
