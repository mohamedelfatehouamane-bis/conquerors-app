.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;
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
    name = "BigDecimalStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/math/BigDecimal;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;
    .locals 1

    .line 79
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;

    .line 81
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;

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

    .line 63
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$BigDecimalStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/math/BigDecimal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
