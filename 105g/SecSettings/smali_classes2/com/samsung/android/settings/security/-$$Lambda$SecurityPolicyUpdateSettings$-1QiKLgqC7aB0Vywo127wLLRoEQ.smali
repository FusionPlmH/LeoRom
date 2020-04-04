.class public final synthetic Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$-1QiKLgqC7aB0Vywo127wLLRoEQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$-1QiKLgqC7aB0Vywo127wLLRoEQ;->f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/security/-$$Lambda$SecurityPolicyUpdateSettings$-1QiKLgqC7aB0Vywo127wLLRoEQ;->f$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->lambda$initAutoUpdatePref$1(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
