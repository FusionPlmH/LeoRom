.class Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$1;
.super Ljava/lang/Object;
.source "SecWifiWidgetPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference$1;->this$0:Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;->access$000(Lcom/samsung/android/settings/wifi/SecWifiWidgetPreference;Landroid/view/View;)V

    return-void
.end method
