.class public abstract Lcom/gpc/aws/handlers/CredentialsRequestHandler;
.super Lcom/gpc/aws/handlers/RequestHandler2;
.source "CredentialsRequestHandler.java"


# instance fields
.field protected awsCredentials:Lcom/gpc/aws/auth/AWSCredentials;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/gpc/aws/handlers/RequestHandler2;-><init>()V

    return-void
.end method


# virtual methods
.method public setCredentials(Lcom/gpc/aws/auth/AWSCredentials;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/gpc/aws/handlers/CredentialsRequestHandler;->awsCredentials:Lcom/gpc/aws/auth/AWSCredentials;

    return-void
.end method
