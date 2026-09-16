.class Lcom/ProductHelper$6;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->requestTranslate(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$chaID:J

.field final synthetic val$strTranslateInput:Ljava/lang/String;

.field final synthetic val$tragetLanguage:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 612
    iput-wide p1, p0, Lcom/ProductHelper$6;->val$chaID:J

    iput-object p3, p0, Lcom/ProductHelper$6;->val$tragetLanguage:Ljava/lang/String;

    iput-object p4, p0, Lcom/ProductHelper$6;->val$strTranslateInput:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 614
    sget-object v0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    iget-wide v1, p0, Lcom/ProductHelper$6;->val$chaID:J

    iget-object v3, p0, Lcom/ProductHelper$6;->val$tragetLanguage:Ljava/lang/String;

    iget-object v4, p0, Lcom/ProductHelper$6;->val$strTranslateInput:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ProductHelper;->onTranslate(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
