.class public final synthetic Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$3ock74XPWHCjKKaMxOVUXR2_zfM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$3ock74XPWHCjKKaMxOVUXR2_zfM;->f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$3ock74XPWHCjKKaMxOVUXR2_zfM;->f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->lambda$initUpdateNowPref$0(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
