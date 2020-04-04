.class Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;
.super Ljava/lang/Object;
.source "LockAppShortcutSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->initShortcutViewTypePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

.field final synthetic val$viewStyleOption:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->val$viewStyleOption:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    if-nez v0, :cond_0

    const-string v2, "fixed"

    goto :goto_0

    :cond_0
    const-string v2, "floating"

    :goto_0
    invoke-static {v1, v2}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$102(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$200(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_shortcut_type"

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$100(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$300(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->val$viewStyleOption:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings$2;->this$0:Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;->access$000(Lcom/samsung/android/settings/lockscreen/LockAppShortcutSettings;)V

    const/4 v1, 0x1

    return v1
.end method
