.class public interface abstract Lcom/instacart/library/truetime/CacheInterface;
.super Ljava/lang/Object;
.source "CacheInterface.java"


# static fields
.field public static final KEY_CACHED_BOOT_TIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_boot_time"

.field public static final KEY_CACHED_DEVICE_UPTIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_device_uptime"

.field public static final KEY_CACHED_SNTP_TIME:Ljava/lang/String; = "com.instacart.library.truetime.cached_sntp_time"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/String;J)J
.end method

.method public abstract put(Ljava/lang/String;J)V
.end method
