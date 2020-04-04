.class Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;
.super Ljava/lang/Object;
.source "KnoxFingerprintPlusMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$4;->this$0:Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    const-string v1, "FingerprintSettings_register"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->access$500(Lcom/samsung/android/settings/knox/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Ljava/lang/String;)V

    return-void
.end method
