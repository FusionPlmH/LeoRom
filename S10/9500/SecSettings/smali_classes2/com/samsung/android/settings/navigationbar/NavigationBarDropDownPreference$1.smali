.class Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;
.super Ljava/lang/Object;
.source "NavigationBarDropDownPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$100(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference$1;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$000(Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSpinner;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while click spinner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_1
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/navigationbar/NavigationBarDropDownPreference;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onClick(): spinner is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
