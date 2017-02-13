.class public Lcom/android/phone/settings/EditCustomLocationActivity;
.super Lmiui/app/Activity;
.source "EditCustomLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;,
        Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final DIALOG_DELETE:I = 0x1

.field private static final DIALOG_DONE:I = 0x0

.field private static final INSERT_TOKEN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EditCustomLocationActivity"

.field private static final UPDATE_TOKEN:I = 0x1


# instance fields
.field private isCreateNew:Z

.field private mBtnDelete:Landroid/widget/Button;

.field private mBtnDone:Landroid/widget/Button;

.field private mId:I

.field private mLocationView:Landroid/widget/TextView;

.field private mNumberView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

.field private mType:Landroid/widget/RadioGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 57
    iput-boolean v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    .line 59
    iput v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    .line 304
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/settings/EditCustomLocationActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/settings/EditCustomLocationActivity;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->resetDoneButtonEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/settings/EditCustomLocationActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/EditCustomLocationActivity;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    return v0
.end method

.method private getTypeId()I
    .locals 2

    .prologue
    .line 209
    const/4 v0, -0x1

    .line 211
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :goto_0
    return v0

    .line 213
    :pswitch_0
    const/4 v0, 0x0

    .line 214
    goto :goto_0

    .line 216
    :pswitch_1
    const/4 v0, 0x1

    .line 217
    goto :goto_0

    .line 219
    :pswitch_2
    const/4 v0, 0x2

    .line 220
    goto :goto_0

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x7f070041
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static loadCustomLocations(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONArray;

    .prologue
    .line 260
    if-nez p1, :cond_1

    .line 283
    :cond_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 264
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v8, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v9, "1=1"

    const/4 v10, 0x0

    invoke-virtual {v0, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 268
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 270
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 271
    .local v5, "obj":Lorg/json/JSONObject;
    if-nez v5, :cond_2

    .line 268
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    :cond_2
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 274
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "number"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 275
    .local v4, "number":Ljava/lang/String;
    const-string v8, "location"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 276
    .local v3, "location":Ljava/lang/String;
    const-string v8, "type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 277
    .local v6, "type":I
    const-string v8, "number"

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v8, "location"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v8, "type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 281
    sget-object v8, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_1
.end method

.method private resetDoneButtonEnabled()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v0

    if-ltz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 234
    :goto_0
    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private save()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 237
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 238
    .local v9, "number":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 239
    .local v8, "location":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v7

    .line 241
    .local v7, "id":I
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 242
    .local v4, "values":Landroid/content/ContentValues;
    const-string v0, "number"

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "location"

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    iget-boolean v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    sget-object v3, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    const-string v5, "_id=?"

    new-array v6, v1, [Ljava/lang/String;

    iget v10, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    sget-object v1, Lmiui/provider/Telocation;->CONTENT_CUSTOM_LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v0, v11, v2, v1, v4}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;->startInsert(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v11, 0x7f0b03f5

    const/4 v10, 0x2

    const/16 v9, 0x30

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 161
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 163
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 165
    .local v3, "number":Ljava/lang/CharSequence;
    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-le v5, v7, :cond_2

    invoke-interface {v3, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    invoke-interface {v3, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_2

    .line 166
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->showDialog(I)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getTypeId()I

    move-result v4

    .line 171
    .local v4, "typeId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 172
    invoke-interface {v3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 173
    .local v0, "c":C
    if-lt v0, v9, :cond_3

    const/16 v5, 0x39

    if-le v0, v5, :cond_4

    :cond_3
    if-ne v4, v10, :cond_5

    const/16 v5, 0x23

    if-ne v0, v5, :cond_5

    .line 171
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_5
    const/4 v1, 0x0

    .line 177
    .local v1, "errorMsg":Ljava/lang/String;
    if-ne v4, v10, :cond_7

    .line 178
    const v5, 0x7f0b03f6

    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0b03f0

    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 188
    :cond_6
    :goto_2
    if-eqz v1, :cond_0

    .line 189
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 180
    :cond_7
    if-nez v4, :cond_8

    .line 181
    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0b03f2

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 183
    :cond_8
    if-ne v4, v7, :cond_6

    .line 184
    new-array v5, v7, [Ljava/lang/Object;

    const v6, 0x7f0b03f1

    invoke-virtual {p0, v6}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v11, v5}, Lcom/android/phone/settings/EditCustomLocationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 194
    .end local v0    # "c":C
    .end local v1    # "errorMsg":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->save()V

    goto/16 :goto_0

    .line 197
    .end local v2    # "i":I
    .end local v3    # "number":Ljava/lang/CharSequence;
    .end local v4    # "typeId":I
    :pswitch_1
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->showDialog(I)V

    goto/16 :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    goto/16 :goto_0

    .line 161
    :pswitch_data_0
    .packed-switch 0x7f070044
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f070042

    const v7, 0x7f070041

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 63
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v3, 0x7f040015

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->setContentView(I)V

    .line 65
    const v3, 0x7f0b03e0

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->setTitle(I)V

    .line 67
    const v3, 0x7f07003e

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f07003f

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    .line 70
    new-instance v1, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;Lcom/android/phone/settings/EditCustomLocationActivity$1;)V

    .line 72
    .local v1, "textChangeListener":Lcom/android/phone/settings/EditCustomLocationActivity$TextChangeListener;
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    const v3, 0x7f070046

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    .line 76
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDone:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 78
    const v3, 0x7f070045

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v3, 0x7f070044

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    .line 81
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    const v3, 0x7f070040

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    .line 84
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mType:Landroid/widget/RadioGroup;

    new-instance v5, Lcom/android/phone/settings/EditCustomLocationActivity$1;

    invoke-direct {v5, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$1;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 92
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 95
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v5, "action_add_custom_location"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    .line 98
    iget-object v5, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mBtnDelete:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    iget-boolean v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->isCreateNew:Z

    if-nez v3, :cond_0

    .line 100
    const-string v3, "_id"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mId:I

    .line 101
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mNumberView:Landroid/widget/TextView;

    const-string v5, "number"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mLocationView:Landroid/widget/TextView;

    const-string v5, "location"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const-string v3, "type"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 104
    .local v2, "type":I
    packed-switch v2, :pswitch_data_0

    .line 115
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 120
    .end local v2    # "type":I
    :cond_0
    :goto_1
    new-instance v3, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    invoke-direct {v3, p0, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/settings/EditCustomLocationActivity;->mQueryHandler:Lcom/android/phone/settings/EditCustomLocationActivity$QueryHandler;

    .line 121
    return-void

    :cond_1
    move v3, v4

    .line 98
    goto :goto_0

    .line 106
    .restart local v2    # "type":I
    :pswitch_0
    invoke-virtual {p0, v7}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 109
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 112
    :pswitch_2
    const v3, 0x7f070043

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/EditCustomLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    const v3, 0x7f0b018f

    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, "dialog":Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-object v0

    .line 128
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b03f3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditCustomLocationActivity$2;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$2;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b03f4

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/settings/EditCustomLocationActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/settings/EditCustomLocationActivity$3;-><init>(Lcom/android/phone/settings/EditCustomLocationActivity;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b018c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 325
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/android/phone/settings/EditCustomLocationActivity;->finish()V

    .line 327
    const/4 v1, 0x1

    .line 329
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lmiui/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
