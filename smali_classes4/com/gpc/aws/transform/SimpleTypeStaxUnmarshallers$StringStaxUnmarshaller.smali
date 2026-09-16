.class public Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;
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
    name = "StringStaxUnmarshaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/aws/transform/Unmarshaller<",
        "Ljava/lang/String;",
        "Lcom/gpc/aws/transform/StaxUnmarshallerContext;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;
    .locals 1

    .line 53
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    invoke-direct {v0}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;-><init>()V

    sput-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

    .line 55
    :cond_0
    sget-object v0, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->instance:Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;

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

    .line 39
    check-cast p1, Lcom/gpc/aws/transform/StaxUnmarshallerContext;

    invoke-virtual {p0, p1}, Lcom/gpc/aws/transform/SimpleTypeStaxUnmarshallers$StringStaxUnmarshaller;->unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unmarshall(Lcom/gpc/aws/transform/StaxUnmarshallerContext;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Lcom/gpc/aws/transform/StaxUnmarshallerContext;->readText()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
