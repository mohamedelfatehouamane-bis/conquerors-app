.class public Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;
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
    name = "BigIntegerJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/math/BigInteger;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;
    .locals 1

    .line 122
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;

    .line 124
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic unmarshall(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/math/BigInteger;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 112
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
