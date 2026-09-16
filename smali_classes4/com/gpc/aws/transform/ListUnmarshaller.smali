.class public Lcom/gpc/aws/transform/ListUnmarshaller;
.super Ljava/lang/Object;
.source "ListUnmarshaller.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/util/List<",
        "TT;>;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# instance fields
.field private final itemUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/gpc/aws/transform/Unmarshaller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/transform/Unmarshaller<",
            "TT;",
            "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/gpc/aws/transform/ListUnmarshaller;->itemUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    return-void
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/ListUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object v0

    .line 47
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->peek()Lcom/gpc/aws/util/json/AwsJsonToken;

    move-result-object v1

    sget-object v2, Lcom/gpc/aws/util/json/AwsJsonToken;->VALUE_NULL:Lcom/gpc/aws/util/json/AwsJsonToken;

    if-ne v1, v2, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->skipValue()V

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->beginArray()V

    .line 55
    :goto_0
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    iget-object v2, p0, Lcom/gpc/aws/transform/ListUnmarshaller;->itemUnmarshaller:Lcom/gpc/aws/transform/Unmarshaller;

    invoke-interface {v2, p1}, Lcom/gpc/aws/transform/Unmarshaller;->unmarshall(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_1
    invoke-interface {v0}, Lcom/gpc/aws/util/json/AwsJsonReader;->endArray()V

    return-object v1
.end method
