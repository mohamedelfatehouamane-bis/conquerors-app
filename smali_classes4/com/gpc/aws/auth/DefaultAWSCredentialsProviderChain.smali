.class public Lcom/gpc/aws/auth/DefaultAWSCredentialsProviderChain;
.super Lcom/gpc/aws/auth/AWSCredentialsProviderChain;
.source "DefaultAWSCredentialsProviderChain.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    .line 35
    new-array v0, v0, [Lcom/gpc/aws/auth/AWSCredentialsProvider;

    new-instance v1, Lcom/gpc/aws/auth/SystemPropertiesCredentialsProvider;

    invoke-direct {v1}, Lcom/gpc/aws/auth/SystemPropertiesCredentialsProvider;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/gpc/aws/auth/ClasspathPropertiesFileCredentialsProvider;

    invoke-direct {v1}, Lcom/gpc/aws/auth/ClasspathPropertiesFileCredentialsProvider;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/gpc/aws/auth/AWSCredentialsProviderChain;-><init>([Lcom/gpc/aws/auth/AWSCredentialsProvider;)V

    return-void
.end method
