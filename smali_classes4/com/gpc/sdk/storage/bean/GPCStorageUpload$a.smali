.class public abstract Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/storage/bean/GPCStorageUpload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/storage/bean/GPCStorageUpload$a;->a:Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/gpc/sdk/storage/bean/GPCStorageUpload;)Ljava/lang/String;
.end method
