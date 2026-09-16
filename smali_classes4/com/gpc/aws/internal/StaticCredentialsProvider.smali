.class public Lcom/gpc/aws/internal/StaticCredentialsProvider;
.super Ljava/lang/Object;
.source "StaticCredentialsProvider.java"

# interfaces
.implements Lcom/gpc/aws/auth/AWSCredentialsProvider;


# instance fields
.field private final credentials:Lcom/gpc/aws/auth/AWSCredentials;


# direct methods
.method public constructor <init>(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/gpc/aws/internal/StaticCredentialsProvider;->credentials:Lcom/gpc/aws/auth/AWSCredentials;

    return-void
.end method


# virtual methods
.method public getCredentials()Lcom/gpc/aws/auth/AWSCredentials;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/gpc/aws/internal/StaticCredentialsProvider;->credentials:Lcom/gpc/aws/auth/AWSCredentials;

    return-object v0
.end method

.method public refresh()V
    .locals 0

    return-void
.end method
