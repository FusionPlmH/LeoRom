.class Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;
.super Ljava/lang/Object;
.source "WarningSettings.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSeekBarChangeListenerImp"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set_data_limit"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "max"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$302(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42200000    # 40.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    mul-float/2addr v3, v4

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "0.00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v6}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v6

    add-int/lit8 v6, v6, 0x28

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$400(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$500(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$600(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v8}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$700(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    const v10, 0x7f120604

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$302(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->KEY_WARNING_PROGRESS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putInt(Ljava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$300(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v2

    add-int/lit8 v2, v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$200(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data_warning_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$100(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/trafficdata/TrafficPresenter;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings$OnSeekBarChangeListenerImp;->this$0:Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;->access$800(Lcom/samsung/android/settings/datausage/trafficmanager/ui/WarningSettings;Ljava/lang/String;)V

    return-void
.end method
