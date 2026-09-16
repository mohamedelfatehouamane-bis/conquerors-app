.class public final Lcom/gpc/operations/service/net/Chunk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chunksDone:Z

.field private index:I

.field private message:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/operations/service/net/Chunk;->message:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/gpc/operations/service/net/Chunk;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getChunksDone()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/service/net/Chunk;->chunksDone:Z

    return v0
.end method

.method public final getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/service/net/Chunk;->index:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/Chunk;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/service/net/Chunk;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final setChunksDone(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/service/net/Chunk;->chunksDone:Z

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/service/net/Chunk;->index:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/net/Chunk;->message:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/service/net/Chunk;->url:Ljava/lang/String;

    return-void
.end method
