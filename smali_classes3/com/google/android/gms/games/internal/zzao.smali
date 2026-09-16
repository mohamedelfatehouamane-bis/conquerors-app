.class public final Lcom/google/android/gms/games/internal/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games-v2@@21.0.0"


# static fields
.field private static final zza:Lcom/google/android/gms/games/internal/zzao;


# instance fields
.field private volatile zzb:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/games/internal/zzao;

    invoke-direct {v0}, Lcom/google/android/gms/games/internal/zzao;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzao;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Z

    return-void
.end method

.method public static zza()Lcom/google/android/gms/games/internal/zzao;
    .locals 1

    sget-object v0, Lcom/google/android/gms/games/internal/zzao;->zza:Lcom/google/android/gms/games/internal/zzao;

    return-object v0
.end method


# virtual methods
.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Z

    return v0
.end method

.method public final zzc()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzao;->zzb:Z

    return-void
.end method
