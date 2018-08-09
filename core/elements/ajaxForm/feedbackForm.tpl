<form>

    <div class="form-group">
        <label for="">Ваше имя *</label>
        <input type="text" class="form-control" name="user_name" required>
    </div>

    <div class="form-group">
        <label for="">Телефон *</label>
        <input type="tel" class="form-control" name="user_phone" required pattern="8[0-9]{10}" title="Пример: 80336174567">
    </div>

    <div class="form-group">
        <label for="">Email *</label>
        <input type="email" class="form-control" name="user_email" required>
    </div>

    <div class="form-group">
        <label for="">Сообщение</label>
        <textarea name="user_message" cols="30" rows="10"></textarea>
    </div>
    <button type="submit" name="feedback_submit">Отправить</button>

</form>