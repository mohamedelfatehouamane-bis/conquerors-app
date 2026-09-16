.class public Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
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
    name = "BooleanJsonUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/Boolean;",
        "Lcom/gpc/aws/transform/JsonUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;
    .locals 1

    .line 170
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    .line 172
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    invoke-virtual {p1}, Lcom/gpc/aws/transform/JsonUnmarshallerContext;->getReader()Lcom/gpc/aws/util/json/AwsJsonReader;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/aws/util/json/AwsJsonReader;->nextString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 160
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 155
    check-cast p1, Lcom/gpc/aws/transform/JsonUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/JsonUnmarshallerContext;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
