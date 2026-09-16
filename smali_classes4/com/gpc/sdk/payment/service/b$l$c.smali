.class public Lcom/gpc/sdk/payment/service/b$l$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/service/b$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "M:",
        "Ljava/lang/Object;",
        "N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->a:Z

    .line 3
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->b:Z

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/payment/service/b$l$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/payment/service/b$l$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/service/b$l$c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->e:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/payment/service/b$l$c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->e:Ljava/lang/Object;

    return-object p1
.end method

.method public static synthetic d(Lcom/gpc/sdk/payment/service/b$l$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->a:Z

    return p0
.end method

.method public static synthetic e(Lcom/gpc/sdk/payment/service/b$l$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->b:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->c:Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->b:Z

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->d:Ljava/lang/Object;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->a:Z

    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/gpc/sdk/payment/service/b$l$c;->e:Ljava/lang/Object;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/service/b$l$c;->a:Z

    return v0
.end method
