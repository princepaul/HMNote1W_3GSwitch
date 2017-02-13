.class public Lcom/mediatek/phone/VoicemailDialog;
.super Landroid/app/Activity;
.source "VoicemailDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SLEEPTIME:I = 0x5dc

.field private static final TAG:Ljava/lang/String; = "VoicemailDialog"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getSimId(I)J
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 100
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 102
    .local v0, "info":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 103
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 105
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getSimInfo(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # J

    .prologue
    .line 109
    const-string v11, "VoicemailDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getSimInfo simId = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p2

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static/range {p1 .. p3}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v10

    .line 113
    .local v10, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v10, :cond_1

    .line 114
    iget-object v8, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    .line 116
    .local v8, "displayName":Ljava/lang/String;
    const-string v11, "VoicemailDialog"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "== simId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mDisplayName="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b00a7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "dialogText":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 151
    .end local v5    # "dialogText":Ljava/lang/String;
    .end local v8    # "displayName":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 123
    .restart local v5    # "dialogText":Ljava/lang/String;
    .restart local v8    # "displayName":Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    .local v6, "dialogTextBuf":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "bgBeginPos":I
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    add-int v3, v2, v11

    .line 137
    .local v3, "bgEndPos":I
    iget v4, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    .line 138
    .local v4, "colorRes":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 139
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    new-instance v11, Lcom/mediatek/text/style/BackgroundImageSpan;

    iget v12, v10, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimBackgroundRes:I

    invoke-direct {v11, v12, v9}, Lcom/mediatek/text/style/BackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 143
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    const-string v12, "#ffffffff"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-direct {v11, v12}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 145
    new-instance v11, Landroid/text/style/StyleSpan;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v12, 0x21

    invoke-virtual {v6, v11, v2, v3, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object v5, v6

    .line 147
    goto :goto_0

    .line 149
    .end local v2    # "bgBeginPos":I
    .end local v3    # "bgEndPos":I
    .end local v4    # "colorRes":I
    .end local v5    # "dialogText":Ljava/lang/String;
    .end local v6    # "dialogTextBuf":Landroid/text/SpannableStringBuilder;
    .end local v8    # "displayName":Ljava/lang/String;
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0b00a7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, ""

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "dialogTextNoSimInfo":Ljava/lang/String;
    move-object v5, v7

    .line 151
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 183
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const-string v5, "VoicemailDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() intent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v5, p0, Lcom/mediatek/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    const-string v6, "voicemail_number"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "number":Ljava/lang/String;
    const-string v5, "VoicemailDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v5, "voicemail"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 163
    .local v3, "numberUri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.DIAL"

    invoke-direct {v1, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 164
    .local v1, "intentToDialer":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/mediatek/phone/VoicemailDialog;->startActivity(Landroid/content/Intent;)V

    .line 166
    const-wide/16 v5, 0x5dc

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02d8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "unkonwnVoicemail":Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 175
    .end local v4    # "unkonwnVoicemail":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->finish()V

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v5, "VoicemailDialog"

    const-string v6, "onClick() InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intentToDialer":Landroid/content/Intent;
    .end local v2    # "number":Ljava/lang/String;
    .end local v3    # "numberUri":Landroid/net/Uri;
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->finish()V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x7f0700ad
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, -0x1

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->requestWindowFeature(I)Z

    .line 41
    const v10, 0x7f04003b

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->setContentView(I)V

    .line 43
    const v10, 0x7f0700a8

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 44
    .local v1, "imageIcon":Landroid/widget/ImageView;
    const v10, 0x7f0200cb

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 45
    const v10, 0x7f070073

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 46
    .local v8, "title":Landroid/widget/TextView;
    const v10, 0x7f0b0023

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    .line 47
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 48
    .local v9, "window":Landroid/view/Window;
    const v10, 0x7f0700ab

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 49
    .local v2, "mMessageView":Landroid/widget/TextView;
    const v10, 0x7f0700ad

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 50
    .local v3, "okButton":Landroid/widget/Button;
    const v10, 0x7f0700ae

    invoke-virtual {p0, v10}, Lcom/mediatek/phone/VoicemailDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/mediatek/phone/VoicemailDialog;->getIntent()Landroid/content/Intent;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    .line 53
    iget-object v10, p0, Lcom/mediatek/phone/VoicemailDialog;->mIntent:Landroid/content/Intent;

    const-string v11, "simId"

    invoke-virtual {v10, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 54
    .local v7, "slotId":I
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get slotId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-wide/16 v4, -0x1

    .line 83
    .local v4, "simId":J
    const/4 v6, 0x0

    .line 84
    .local v6, "simName":Ljava/lang/CharSequence;
    if-le v7, v13, :cond_0

    .line 85
    invoke-direct {p0, v7}, Lcom/mediatek/phone/VoicemailDialog;->getSimId(I)J

    move-result-wide v4

    .line 86
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get simId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {p0, v10, v4, v5}, Lcom/mediatek/phone/VoicemailDialog;->getSimInfo(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v6

    .line 88
    const-string v10, "VoicemailDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "==============================================get simName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method
