.class public Lcom/gpc/sdk/push/helper/a$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/push/helper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/push/helper/a$g;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/gpc/sdk/push/helper/a$g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/gpc/sdk/push/helper/a$f;->a:J

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/push/helper/a$f;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/push/helper/a$f;->c:Lcom/gpc/sdk/push/helper/a$g;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/push/helper/a$f;)Lcom/gpc/sdk/push/helper/a$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/push/helper/a$f;->c:Lcom/gpc/sdk/push/helper/a$g;

    return-object p0
.end method

.method public static synthetic b(Lcom/gpc/sdk/push/helper/a$f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/push/helper/a$f;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 4
    iget-wide v0, p0, Lcom/gpc/sdk/push/helper/a$f;->a:J

    return-wide v0
.end method

.method public a(J)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/gpc/sdk/push/helper/a$f;->a:J

    return-void
.end method

.method public a(Lcom/gpc/sdk/push/helper/a$g;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/gpc/sdk/push/helper/a$f;->c:Lcom/gpc/sdk/push/helper/a$g;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/push/helper/a$f;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Lcom/gpc/sdk/push/helper/a$g;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/push/helper/a$f;->c:Lcom/gpc/sdk/push/helper/a$g;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/helper/a$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Download{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gpc/sdk/push/helper/a$f;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/push/helper/a$f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/push/helper/a$f;->c:Lcom/gpc/sdk/push/helper/a$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
