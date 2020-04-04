.class public Lcom/samsung/android/provider/SemKnoxPolicyContract$RestrictionPolicy;
.super Ljava/lang/Object;
.source "SemKnoxPolicyContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/provider/SemKnoxPolicyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionPolicy"
.end annotation


# static fields
.field public static final LOCAL_CONTACT_STORAGE_ALLOWED:Ljava/lang/String; = "isLocalContactStorageAllowed"

.field public static final NAME:Ljava/lang/String; = "RestrictionPolicy"

.field public static final URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
