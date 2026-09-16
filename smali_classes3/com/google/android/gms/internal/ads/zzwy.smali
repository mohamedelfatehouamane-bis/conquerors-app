.class public final synthetic Lcom/google/android/gms/internal/ads/zzwy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@23.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxn;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzxt;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzxh;

.field public final synthetic zzc:Z

.field public final synthetic zzd:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzxt;Lcom/google/android/gms/internal/ads/zzxh;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzwy;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzb:Lcom/google/android/gms/internal/ads/zzxh;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzd:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbr;[I)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzxa;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwy;->zza:Lcom/google/android/gms/internal/ads/zzxt;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzxa;-><init>(Lcom/google/android/gms/internal/ads/zzxt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzd:[I

    aget v8, v0, p1

    .line 2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzfxk;

    .line 3
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzfxk;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbr;->zza:I

    if-ge v3, v0, :cond_0

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzc:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzwy;->zzb:Lcom/google/android/gms/internal/ads/zzxh;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzxd;

    .line 5
    aget v5, p3, v3

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzxd;-><init>(ILcom/google/android/gms/internal/ads/zzbr;ILcom/google/android/gms/internal/ads/zzxh;IZLcom/google/android/gms/internal/ads/zzfuo;I)V

    invoke-virtual {v9, v0}, Lcom/google/android/gms/internal/ads/zzfxk;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfxk;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfxk;->zzi()Lcom/google/android/gms/internal/ads/zzfxn;

    move-result-object p1

    return-object p1
.end method
