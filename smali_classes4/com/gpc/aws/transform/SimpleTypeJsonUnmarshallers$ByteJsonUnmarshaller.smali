.class public Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeJsonUnmarshallers.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/Byte;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;
    .locals 1

    .line 240
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;

    .line 242
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Byte;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 230
    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(Ljava/lang/String;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
