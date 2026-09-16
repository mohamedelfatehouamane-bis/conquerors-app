.class Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;
.super Ljava/lang/Object;
.source "SharedPreferenceCacheImpl.java"

# interfaces
.implements Lcom/instacart/library/truetime/CacheInterface;


# static fields
.field private static final KEY_CACHED_SHARED_PREFS:Ljava/lang/String; = "com.instacart.library.truetime.shared_preferences"


# instance fields
.field private _sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "com.instacart.library.truetime.shared_preferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->_sharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private remove(Ljava/lang/String;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 30
    const-string v0, "com.instacart.library.truetime.cached_boot_time"

    invoke-direct {p0, v0}, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->remove(Ljava/lang/String;)V

    .line 31
    const-string v0, "com.instacart.library.truetime.cached_device_uptime"

    invoke-direct {p0, v0}, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->remove(Ljava/lang/String;)V

    .line 32
    const-string v0, "com.instacart.library.truetime.cached_sntp_time"

    invoke-direct {p0, v0}, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public get(Ljava/lang/String;J)J
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public put(Ljava/lang/String;J)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/instacart/library/truetime/SharedPreferenceCacheImpl;->_sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
