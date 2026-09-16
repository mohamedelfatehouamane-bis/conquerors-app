.class public Lcom/gpc/aws/util/ServiceClientHolderInputStream;
.super Lcom/gpc/aws/internal/SdkFilterInputStream;
.source "ServiceClientHolderInputStream.java"


# instance fields
.field private client:Lcom/gpc/aws/AmazonWebServiceClient;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/gpc/aws/AmazonWebServiceClient;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/gpc/aws/internal/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 41
    iput-object p2, p0, Lcom/gpc/aws/util/ServiceClientHolderInputStream;->client:Lcom/gpc/aws/AmazonWebServiceClient;

    return-void
.end method
