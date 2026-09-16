.class public interface abstract Lcom/gpc/sdk/push/service/DeviceService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MESSAGE_STATE_OFFLINE_ARRIVAL:Ljava/lang/String; = "2"

.field public static final MESSAGE_STATE_OFFLINE_READ:Ljava/lang/String; = "3"

.field public static final MESSAGE_STATE_ONLINE_ARRIVAL:Ljava/lang/String; = "5"


# virtual methods
.method public abstract markMessage(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/push/service/MessageMarkingListener;)V
.end method

.method public abstract registerDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/push/service/DeviceRegistrationListener;)V
.end method

.method public abstract unregisterDevice(Ljava/lang/String;Lcom/gpc/sdk/push/service/DeviceUnregistrationListener;)V
.end method
