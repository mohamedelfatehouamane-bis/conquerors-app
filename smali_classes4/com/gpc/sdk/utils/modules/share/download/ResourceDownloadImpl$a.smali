.class public Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl$a;->a:Lcom/gpc/sdk/utils/modules/share/download/ResourceDownloadImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
