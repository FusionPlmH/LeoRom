.class final Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;
.super Ljava/lang/Object;
.source "TextClassifierImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LabeledIntent"
.end annotation


# static fields
.field static final DEFAULT_REQUEST_CODE:I


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mIntent:Landroid/content/Intent;

.field private final mRequestCode:I

.field private final mTitle:Ljava/lang/String;

.field private final mType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mType:Ljava/lang/String;

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    iput p4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mType:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    iput-object p4, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    iput p5, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return-void
.end method


# virtual methods
.method asRemoteAction(Landroid/content/Context;)Landroid/app/RemoteAction;
    .locals 13

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    iget-object v8, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    iget-object v9, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mType:Ljava/lang/String;

    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const-string v9, "android"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mType:Ljava/lang/String;

    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x4468640c

    if-eq v11, v12, :cond_4

    const v12, 0x1c56f

    if-eq v11, v12, :cond_3

    const v12, 0x5c24b9c

    if-eq v11, v12, :cond_2

    const v2, 0x65b3d6e

    if-eq v11, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const-string v11, "email"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "url"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    goto :goto_2

    :cond_4
    const-string v2, "address"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x3

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v10

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    :pswitch_0
    const v2, 0x1080b10

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v6, 0x1

    goto :goto_5

    :pswitch_1
    if-nez v1, :cond_6

    const v2, 0x1080b18

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    goto :goto_3

    :cond_6
    const v2, 0x1080b08

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_3
    move-object v5, v2

    const/4 v6, 0x1

    goto :goto_5

    :pswitch_2
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v9

    if-nez v9, :cond_7

    const v9, 0x1080b0b

    invoke-static {p1, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    goto :goto_4

    :cond_7
    const v9, 0x1080b14

    invoke-static {p1, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :goto_4
    const/4 v6, 0x1

    goto :goto_5

    :pswitch_3
    const v2, 0x1080b0f

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v6, 0x1

    nop

    :cond_8
    :goto_5
    if-eqz v4, :cond_9

    const-string v2, "android"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v4, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result v2

    invoke-static {v4, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :cond_9
    if-nez v5, :cond_a

    const-string v2, "android"

    const v9, 0x108052c

    invoke-static {v2, v9}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v5

    :cond_a
    iget-object v2, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    iget v9, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    invoke-static {p1, v2, v9}, Landroid/view/textclassifier/TextClassification;->createPendingIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_b

    return-object v3

    :cond_b
    new-instance v3, Landroid/app/RemoteAction;

    invoke-direct {v3, v5, v7, v8, v2}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3, v6}, Landroid/app/RemoteAction;->setShouldShowIcon(Z)V

    return-object v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method getIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method getRequestCode()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mRequestCode:I

    return v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextClassifierImpl$LabeledIntent;->mType:Ljava/lang/String;

    return-object v0
.end method
