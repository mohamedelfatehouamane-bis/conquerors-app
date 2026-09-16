.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;
.super Ljava/lang/Object;
.source "SimpleTypeStaxUnmarshallers.java"

# interfaces
.implements Lcom/gpc/aws/transform/Unmarshaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/Byte;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;
    .locals 1

    .line 246
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;

    .line 248
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;

    return-object v0
.end method


# virtual methods
.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Byte;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 235
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 236
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

    .line 232
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$ByteStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
