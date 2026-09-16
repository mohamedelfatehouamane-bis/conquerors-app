.class public Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;
.super Lcom/gpc/aws/AmazonServiceException;
.source "InvalidKMSResourceException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/gpc/aws/AmazonServiceException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;->code:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/gpc/aws/services/kinesisfirehose/model/InvalidKMSResourceException;->code:Ljava/lang/String;

    return-void
.end method
